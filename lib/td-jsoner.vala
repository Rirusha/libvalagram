/*
 * Copyright (C) 2024 Vladimir Vaskov
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

using Gee;

/**
 * @since 0.1.0
 */
internal class TDLib.TDJsoner : Object {

    /**
     * Нейм кейс для десериализации
     */
    public Case names_case { get; construct; }

    /**
     * Корневая нода, получается после прохождения по названиям элементов json,
     * указанных в sub_members конструктора
     */
    public Json.Node root { get; construct; }

    /**
     * Базовый конструктор класса. Выполняет инициализацию для десериализации.
     * Принимает json строку. В случе ошибки при парсинге,
     * выбрасывает ``ApiBase.Error.PARSE``
     *
     * @param json_string   json строка
     * @param sub_members   массив имён элементов json, по которым нужно пройти до целевой ноды
     * @param names_case    нейм кейс имён элементов в json строке
     */
    public TDJsoner (
        string json_string,
        string[]? sub_members = null,
        Case names_case = Case.KEBAB
    ) throws JsonError {
        Json.Node? node;
        try {
            node = Json.from_string (json_string);

        } catch (GLib.Error e) {
            throw new JsonError.PARSE ("'%s' is not correct json string".printf (json_string));
        }

        if (node == null) {
            throw new JsonError.PARSE ("Json string is empty");
        }

        if (sub_members != null) {
            node = steps (node, sub_members);
        }

        Object (root : node, names_case : names_case);
    }

    /**
     * Конструктор класса. Выполняет инициализацию для десериализации.
     * Принимает json строку в виде байтов, объекта ``GLib.Bytes``. В случе ошибки при парсинге,
     * выбрасывает ``ApiBase.Error.PARSE``
     *
     * @param bytes         json строка в виде байтов, объекта ``GLib.Bytes``
     * @param sub_members   массив имён элементов json, по которым нужно пройти до целевой ноды
     * @param names_case    нейм кейс имён элементов в json строке
     */
    public static TDJsoner from_bytes (
        Bytes bytes,
        string[]? sub_members = null,
        Case names_case = Case.KEBAB
    ) throws JsonError {
        if (bytes.length < 1) {
            throw new JsonError.PARSE ("Json string is empty");
        }

        return from_data (bytes.get_data (), sub_members, names_case);
    }

    /**
     * Конструктор класса. Выполняет инициализацию для десериализации.
     * Принимает json строку в виде байтов, массива ``uint8``. В случе ошибки при парсинге,
     * выбрасывает ``ApiBase.Error.PARSE``
     *
     * @param bytes         json строка в виде байтов, массива ``uint8``
     * @param sub_members   массив имён элементов json, по которым нужно пройти до целевой ноды
     * @param names_case    нейм кейс имён элементов в json строке
     */
    public static TDJsoner from_data (
        uint8[] data,
        string[]? sub_members = null,
        Case names_case = Case.KEBAB
    ) throws JsonError {
        return new TDJsoner ((string) data, sub_members, names_case);
    }

    /**
     * Функция для выполнения перехода в переданной ноде по названиям элементов.
     * В случае, если элемент не найден, будет выкинута ``ApiBase.Error.PARSE``
     *
     * @param node          исходная json нода
     * @param sub_members   массив "путь" имён элементов, по которому нужно пройти
     *
     * @return              целевая json нода
     */
    static Json.Node? steps (
        Json.Node node,
        string[] sub_members
    ) throws JsonError {
        string has_members = "";

        foreach (string member_name in sub_members) {
            if (node.get_object ().has_member (member_name)) {
                node = node.get_object ().get_member (member_name);
                has_members += member_name + "-";

            } else {
                throw new JsonError.PARSE ("Json has no %s%s".printf (has_members, member_name));
            }
        }

        return node;
    }

    /////////////////
    // Serialize  //
    /////////////////

    /**
     * Функция для сериализации ``GLib.Datalist<string>`` в json строку.
     *
     * @param datalist  объект ``Glib.Datalist``, который нужно сериализовать
     *
     * @return          json строка
     */
    public static string serialize_datalist (Datalist<string> datalist) {
        var builder = new Json.Builder ();
        builder.begin_object ();

        datalist.foreach ((key_id, data) => {
            builder.set_member_name (key_id.to_string ());

            TDJsoner.serialize_value (builder, data);
        });

        builder.end_object ();

        var generator = new Json.Generator ();
        generator.set_root (builder.get_root ());

        return generator.to_data (null);
    }

    /**
     * Функция для сериализации ``YaMObject`` в json строку.
     *
     * @param datalist      объект ``YaMObject``, который нужно сериализовать
     * @param names_case    нейм кейс имён элементов в json строке
     *
     * @return              json строка
     */
    public static string serialize (
        Object api_obj,
        Case names_case = Case.KEBAB
    ) {
        var builder = new Json.Builder ();
        serialize_object (builder, api_obj, names_case);

        return Json.to_string (builder.get_root (), false);
    }

    /**
     * Функция для сериализации ``Gee.ArrayList``.
     * Элементы списка могут быть:
     *  - ``Tape.YaMObject``
     *  - ``string``
     *  - ``int32``
     *  - ``int64``
     *  - ``double``
     *  - ``Gee.ArrayList``
     *
     * @param builder       объект ``Json.Builder``
     * @param array_list    объект ``Gee.ArrayList``, который нужно сериализовать
     * @param element_type  тип элементов в array_list
     * @param names_case    нейм кейс имён элементов в json строке
     */
    static void serialize_array (
        Json.Builder builder,
        ArrayList array_list,
        Type element_type,
        Case names_case = Case.KEBAB
    ) {
        builder.begin_array ();

        if (element_type.parent () == typeof (Object)) {
            foreach (var api_obj in (ArrayList<Object>) array_list) {
                serialize_object (builder, api_obj, names_case);
            }
        } else if (element_type == typeof (ArrayList)) {
            var array_of_arrays = (ArrayList<ArrayList?>) array_list;

            if (array_of_arrays.size > 0) {
                Type sub_element_type = ((ArrayList<ArrayList?>) array_list)[0].element_type;

                foreach (var sub_array_list in (ArrayList<ArrayList?>) array_list) {
                    serialize_array (builder, sub_array_list, sub_element_type, names_case);
                }
            }
        } else {
            switch (element_type) {
                case Type.STRING:
                    foreach (string val in (ArrayList<string>) array_list) {
                        serialize_value (builder, val);
                    }
                    break;

                case Type.INT:
                    foreach (int val in (ArrayList<int>) array_list) {
                        serialize_value (builder, val);
                    }
                    break;
            }
        }
        builder.end_array ();
    }

    /**
     * Функция для сериализации ``ApiBase.Object`` или ``null``.
     *
     * @param builder       объект ``Json.Builder``
     * @param api_obj       объект ``ApiBase.Object``, который нужно сериализовать.
     *                      Может быть ``null``
     * @param names_case    нейм кейс имён элементов в json строке
     */
    static void serialize_object (
        Json.Builder builder,
        Object? api_obj,
        Case names_case = Case.KEBAB
    ) {
        if (api_obj == null) {
            builder.add_null_value ();

            return;
        }

        builder.begin_object ();
        var cls = (ObjectClass) api_obj.get_type ().class_ref ();

        foreach (ParamSpec property in cls.list_properties ()) {
            if (((property.flags & ParamFlags.READABLE) == 0) || ((property.flags & ParamFlags.WRITABLE) == 0)) {
                continue;
            }

            var json_property = strip (property.name, '-');
            if (json_property.has_prefix ("tdlib-")) {
                json_property = json_property.replace ("tdlib-", "@");
            }

            switch (names_case) {
                case Case.CAMEL:
                    builder.set_member_name (kebab2camel (json_property));
                    break;

                case Case.SNAKE:
                    builder.set_member_name (kebab2snake (json_property));
                    break;

                case Case.KEBAB:
                    builder.set_member_name (json_property);
                    break;

                default:
                    error ("Unknown case - %s", names_case.to_string ());
            }

            var prop_val = Value (property.value_type);
            api_obj.get_property (property.name, ref prop_val);

            if (property.value_type == typeof (ArrayList)) {
                var array_list = (ArrayList) prop_val.get_object ();
                Type element_type = array_list.element_type;

                serialize_array (builder, array_list, element_type, names_case);

            } else if (property.value_type.is_object ()) {
                serialize_object (builder, (Object) prop_val.get_object (), names_case);

            } else if (property.value_type == typeof (Bytes)) {
                builder.add_string_value (Base64.encode (((Bytes) prop_val.get_boxed ()).get_data ()));

            } else {
                serialize_value (builder, prop_val);
            }
        }

        builder.end_object ();
    }

    /**
     * Функция для сериализации ``GLib.Value`` или ``null``.
     *
     * @param builder       объект ``Json.Builder``
     * @param prop_val      значение базового типа, который нужно сериализовать.
     *                      Может содержать ``null``
     */
    static void serialize_value (Json.Builder builder, Value prop_val) {
        switch (prop_val.type ()) {
            case Type.INT:
                builder.add_int_value (prop_val.get_int ());
                break;

            case Type.INT64:
                builder.add_int_value (prop_val.get_int64 ());
                break;

            case Type.DOUBLE:
                builder.add_double_value (prop_val.get_double ());
                break;

            case Type.STRING:
                builder.add_string_value (prop_val.get_string ());
                break;

            case Type.BOOLEAN:
                builder.add_boolean_value (prop_val.get_boolean ());
                break;

            case Type.NONE:
                builder.add_null_value ();
                break;

            default:
                warning ("Unknown type for serialize - %s", prop_val.type ().name ());
                break;
        }
    }

    //////////////////
    // Deserialize  //
    //////////////////

    public Object deserialize_object (
        string? obj_type_name,
        Json.Node? node = null,
        SubArrayCreationFunc? sub_creation_func = null
    ) throws JsonError {
        if (node == null) {
            node = root;
        }

        if (node.get_node_type () != Json.NodeType.OBJECT) {
            warning ("Wrong type: expected %s, got %s",
                Json.NodeType.OBJECT.to_string (),
                node.get_node_type ().to_string ()
            );
            throw new JsonError.PARSE ("Node isn't object");
        }

        Type obj_type;
        if (obj_type_name != null) {
            obj_type = Type.from_name (obj_type_name);
        } else {
            obj_type = Type.from_name ("TDLib" + camel2pascal (node.get_object ().get_string_member ("@type")));
        }

        var api_object = (Object) Object.new (obj_type);
        api_object.freeze_notify ();

        var class_ref = (ObjectClass) obj_type.class_ref ();
        ParamSpec[] properties = class_ref.list_properties ();

        foreach (ParamSpec property in properties) {
            if ((property.flags & ParamFlags.WRITABLE) == 0) {
                continue;
            }

            Type prop_type = property.value_type;

            var json_property = strip (property.name, '-');
            if (json_property.has_prefix ("tdlib-")) {
                json_property = json_property.replace ("tdlib-", "@");
            }

            string member_name;
            switch (names_case) {
                case Case.CAMEL:
                    member_name = kebab2camel (json_property);
                    break;

                case Case.SNAKE:
                    member_name = kebab2snake (json_property);
                    break;

                case Case.KEBAB:
                    member_name = json_property;
                    break;

                default:
                    error ("Unknown case - %s", names_case.to_string ());
            }

            if (!node.get_object ().has_member (member_name)) {
                continue;
            }

            var sub_node = node.get_object ().get_member (member_name);

            switch (sub_node.get_node_type ()) {
                case Json.NodeType.ARRAY:
                    var arrayval = Value (prop_type);
                    api_object.get_property (property.name, ref arrayval);
                    ArrayList array_list = (Gee.ArrayList) arrayval.get_object ();

                    deserialize_array (array_list, sub_node, sub_creation_func);
                    api_object.set_property (
                        property.name,
                        array_list
                    );
                    break;

                case Json.NodeType.OBJECT:
                    api_object.set_property (
                        property.name,
                        deserialize_object (null, sub_node, sub_creation_func)
                    );
                    break;

                case Json.NodeType.VALUE:
                    var val = deserialize_value (sub_node);
                    if ((val.type () == Type.STRING) && (prop_type == typeof (Bytes))) {
                        api_object.set_property (
                            property.name,
                            new Bytes (Base64.decode (val.get_string ()))
                        );
                    } else {
                        api_object.set_property (
                            property.name,
                            val
                        );
                    }
                    break;

                case Json.NodeType.NULL:
                    api_object.set_property (
                        property.name,
                        Value (prop_type)
                    );
                    break;
            }
        }

        api_object.thaw_notify ();

        return api_object;
    }

    /**
     * Метод для десериализации значения.
     *
     * @param node      нода, которая будет десериализована. Будет использовано свойство
     *                  root, если передан ``null``
     *
     * @return          десериализованное значение
     */
    public Value deserialize_value (Json.Node? node = null) throws JsonError {
        if (node == null) {
            node = root;
        }

        if (node.get_node_type () != Json.NodeType.VALUE) {
            warning ("Wrong type: expected %s, got %s",
                Json.NodeType.VALUE.to_string (),
                node.get_node_type ().to_string ()
            );

            throw new JsonError.PARSE ("Node isn't value");
        }

        return node.get_value ();
    }

    /**
     * Метод для десериализации ``Gee.ArrayList``.
     * Поддерживает только одиночную вложенность (список в списке).
     * В сучае вложенности, массив должен содержать в себе массив с определенным типом элементов
     *
     * @param array_list    Reference of {@link Gee.ArrayList}
     * @param node          нода, которая будет десериализована. Будет использовано свойство
     *                      root, если передан ``null``
     */
    public void deserialize_array (
        ArrayList array_list,
        Json.Node? node = null,
        SubArrayCreationFunc? sub_creation_func = null
    ) throws JsonError {
        if (node == null) {
            node = root;
        }

        if (node.get_node_type () != Json.NodeType.ARRAY) {
            warning ("Wrong type: expected %s, got %s",
                Json.NodeType.ARRAY.to_string (),
                node.get_node_type ().to_string ()
            );
            throw new JsonError.PARSE ("Node isn't array");
        }

        var jarray = node.get_array ();

        if (array_list.element_type.parent () == typeof (Object)) {
            array_list.clear ();
            var narray_list = array_list as ArrayList<Object>;

            foreach (var sub_node in jarray.get_elements ()) {
                try {
                    narray_list.add (deserialize_object (null, sub_node));
                } catch (JsonError e) {}
            }

            // Нужен только для YaMAPI.Album.tracks, так как апи возвращает массив из массивов
        } else if (array_list.element_type == typeof (ArrayList)) {
            var narray_list = array_list as ArrayList<ArrayList>;

            // Проверка, если ли в массиве массив, из которого будет взят тип
            assert (narray_list.size != 0);

            Type sub_element_type = narray_list[0].element_type;

            foreach (var sub_node in jarray.get_elements ()) {
                ArrayList new_array_list;

                if (sub_creation_func != null) {
                    if (!sub_creation_func (out new_array_list, sub_element_type)) {
                        error ("Creation func failed");
                    }

                } else {
                    error ("Creation func is null");
                }

                try {
                    deserialize_array (new_array_list, sub_node, sub_creation_func);
                    narray_list.add (new_array_list);
                } catch (JsonError e) {}
            }

            narray_list.remove (narray_list[0]);
        } else {
            array_list.clear ();

            switch (array_list.element_type) {
                case Type.STRING:
                    var narray_list = array_list as ArrayList<string>;

                    foreach (var sub_node in jarray.get_elements ()) {
                        try {
                            narray_list.add (deserialize_value (sub_node).get_string ());
                        } catch (JsonError e) {}
                    }
                    break;

                case Type.INT:
                    var narray_list = array_list as ArrayList<int>;

                    foreach (var sub_node in jarray.get_elements ()) {
                        try {
                            narray_list.add ((int) deserialize_value (sub_node).get_int64 ());
                        } catch (JsonError e) {}
                    }
                    break;

                case Type.INT64:
                    var narray_list = array_list as ArrayList<int64>;

                    foreach (var sub_node in jarray.get_elements ()) {
                        try {
                            narray_list.add (deserialize_value (sub_node).get_int64 ());
                        } catch (JsonError e) {}
                    }
                    break;

                default:
                    warning ("Unknown type of element of array - %s",
                        array_list.element_type.name ()
                    );
                    break;
            }
        }
    }
}

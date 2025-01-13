project(
  'libvalagram',
  ['c', 'vala'],
  version: '1.0.2',
  meson_version: '>= 1.0.0',
  license: 'GPL-3.0-or-later',
)

api_version = '1'
glib_min_version = '2.76'

project_name = meson.project_name()
gir_name = 'TDLib'

versioned_name = meson.project_name() + '-' + api_version
versioned_gir_name = gir_name + '-' + api_version

libvalagram_deps = versioned_name + '.deps'
libvalagram_header = project_name + '.h'
libvalagram_vapi = versioned_name + '.vapi'
libvalagram_gir = versioned_gir_name + '.gir'
libvalagram_typelib = versioned_gir_name + '.typelib'

pkgconfig = import('pkgconfig')
gnome = import('gnome')

deps_pkgs = [
  'gee-0.8',
  'gio-2.0',
  'json-glib-1.0',
  'tdjson',
]

gee_dep = dependency('gee-0.8')
gio_dep = dependency('gio-2.0')
json_glib_dep = dependency('json-glib-1.0')
tdjson_dep = dependency('tdjson')

libvalagram_pgconfig_req = [
  gee_dep,
  gio_dep,
  json_glib_dep,
]
libvalagram_dependencies = libvalagram_pgconfig_req + [tdjson_dep]

gee_girdir = gee_dep.get_variable('datadir') / 'gir-1.0'
gee_vapidir = gee_dep.get_variable('datadir') / 'vala' / 'vapi'

add_project_arguments(
  # GCC14 COMPILE ERROR
  '-Wno-int-conversion',
  language: ['c'],
)

add_project_arguments(
  '--abi-stability',
  '--hide-internal',
  '--target-glib', glib_min_version,
  '--vapidir', meson.current_source_dir() / 'vapi',
  language: ['vala'],
)

subdir('lib')

if get_option('documentation')
  subdir('doc')
endif

subdir('vapi')

gnome.post_install()

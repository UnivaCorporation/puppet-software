class software(
  Hash[String, Hash] $packages) {

  if defined('$tortuga_kit_uge::execd::svcname') and
    defined(Service[$tortuga_kit_uge::execd::svcname]) {
    Package <| tag == 'software' |> -> Service <| title == $tortuga_kit_uge::execd::svcname |>
  }

  $packages.each |$pkg, $opts| {
    package { $pkg:
      * => $opts,
    }
  }
}

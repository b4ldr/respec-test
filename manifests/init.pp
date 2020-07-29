class rspec_test {
    if $settings::storeconfigs {
        @@nagios_host {'confined':
            ensure => present
        }
    }
    @@nagios_host {'unconfined':
        ensure => present
    }
}

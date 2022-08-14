class hadoop::config (
$zookeeper_hosts = lookup('zookeeper_hosts', Array[String], undef, undef),
Array[String[1]] $test_array,
){
  notify {"The zookeeper hosts are: $zookeeper_hosts":}

  file { '/root/test':
    ensure  => file,
    content => epp('hadoop/test.epp',
      {
       'test_array' => $test_array
      })
  }

}





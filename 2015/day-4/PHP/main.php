<?php

// $secret_key = "abcdef";
// $secret_key = "pqrstuv";
$secret_key = "iwrupvqb";

// $secret_number = 609043;
// $secret_number = 1048970;
$secret_number = 0;

while (true) {
    $to_be_hashed = $secret_key . $secret_number;
    // echo $to_be_hashed . "\n";

    $hash = md5($to_be_hashed);
    $first_five_characters = substr($hash, 0, 5);
    // echo $first_five_characters . "\n";
    if (strcmp($first_five_characters, "00000") == 0) {
        // echo "FOUND \n";
        break;
    } else {
        $secret_number++;
        // echo $secret_number . "\n";
    }
}

echo $hash . "\n";
echo $secret_number . "\n";
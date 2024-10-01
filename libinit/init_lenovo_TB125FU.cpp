/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>
#include <libinit_utils.h>
#include <unistd.h>

#include "vendor_init.h"

static const variant_info_t TB125FU_info = {
    .hwc_value = "",
    .sku_value = "TB125FU",

    .brand = "lenovo",
    .device = "TB125FU",
    .marketname = "Lenovo Tab M10 Plus (3rd Gen)",
    .model = "Lenovo TB125FU",
    .build_fingerprint = "Lenovo/TB125FU/TB125FU:13/TP1A.220624.014/S100155_240812_ROW:user/release-keys"
};

static const std::vector<variant_info_t> variants = {
    TB125FU_info,
};

void vendor_load_properties() {
    if (access("/system/bin/recovery", F_OK) != 0) {
        search_variant(variants);
    }
}

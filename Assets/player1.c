#include "player1.h"
// Data created with Img2CPC - (c) Retroworks - 2007-2017
// Tile g_tile_player1_00: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_00[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x88, 0x00,
	0x00, 0x41, 0x3c, 0x44, 0x44, 0x00,
	0x00, 0x3c, 0x3c, 0x28, 0x88, 0x88,
	0x00, 0x3c, 0x78, 0xe4, 0x44, 0x00,
	0x00, 0x3c, 0x78, 0x00, 0x88, 0x88,
	0x00, 0x14, 0xf0, 0xe4, 0x44, 0x00,
	0x00, 0x50, 0xf0, 0x00, 0x88, 0x00,
	0x00, 0x2f, 0x0f, 0x4e, 0x88, 0x00,
	0x00, 0x5a, 0xa5, 0x5a, 0x00, 0x00,
	0x00, 0x5a, 0x0f, 0x0a, 0x00, 0x00,
	0x00, 0xa5, 0x0f, 0x0a, 0x00, 0x00,
	0x00, 0xf0, 0x0f, 0x0a, 0x00, 0x00,
	0x00, 0xda, 0xe5, 0x8a, 0x00, 0x00,
	0x00, 0x3f, 0xb5, 0x2a, 0x00, 0x00,
	0x00, 0x3f, 0x3f, 0x2a, 0x00, 0x00,
	0x00, 0x15, 0x3f, 0x2a, 0x00, 0x00,
	0x00, 0xcc, 0xf0, 0x00, 0x00, 0x00,
	0x00, 0xcc, 0xf0, 0xa0, 0x00, 0x00,
	0x44, 0x88, 0x00, 0xf5, 0xaa, 0x00,
	0x04, 0x08, 0x00, 0xff, 0xaa, 0x00,
	0x00, 0x0c, 0x00, 0x55, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_01: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_01[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x41, 0x3c, 0x00, 0x00, 0x00,
	0x00, 0x3c, 0x3c, 0x28, 0x00, 0x00,
	0x00, 0x3c, 0x78, 0xa0, 0x00, 0x00,
	0x00, 0x3c, 0x78, 0x00, 0x00, 0x00,
	0x00, 0x14, 0xf0, 0xa0, 0x88, 0x00,
	0x00, 0x50, 0xf0, 0x44, 0x44, 0x00,
	0x00, 0x2f, 0x0f, 0x0a, 0x88, 0x88,
	0x00, 0x5a, 0x0f, 0x4e, 0x44, 0x00,
	0x00, 0x5a, 0x0f, 0x0a, 0x88, 0x88,
	0x00, 0x0f, 0xa5, 0x4e, 0x44, 0x00,
	0x00, 0x0f, 0x5a, 0xa0, 0x00, 0x00,
	0x00, 0xcf, 0xcf, 0x8a, 0x00, 0x00,
	0x00, 0x3f, 0x3f, 0x2a, 0x00, 0x00,
	0x00, 0x3f, 0x3f, 0x2a, 0x00, 0x00,
	0x00, 0x3f, 0x3f, 0x00, 0x00, 0x00,
	0x00, 0xe4, 0xcc, 0x00, 0x00, 0x00,
	0x00, 0xf0, 0xcc, 0x88, 0x00, 0x00,
	0x50, 0xa0, 0x00, 0x8c, 0x08, 0x00,
	0x55, 0xaa, 0x00, 0x0c, 0x08, 0x00,
	0x00, 0xff, 0x00, 0x04, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_02: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_02[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x41, 0x3c, 0x00, 0x88, 0x00,
	0x00, 0x96, 0x3c, 0x6c, 0x44, 0x00,
	0x00, 0x3c, 0x3c, 0xa0, 0x88, 0x88,
	0x00, 0x3c, 0x78, 0x44, 0x44, 0x00,
	0x00, 0x3c, 0x78, 0xa0, 0x88, 0x88,
	0x00, 0x50, 0xf0, 0x44, 0x44, 0x00,
	0x00, 0x2f, 0x0f, 0x0a, 0x88, 0x00,
	0x00, 0x0f, 0xa5, 0x4e, 0x88, 0x00,
	0x00, 0x0f, 0xa5, 0x4e, 0x00, 0x00,
	0x00, 0x5a, 0x0f, 0x5a, 0x00, 0x00,
	0x00, 0x0f, 0xa5, 0x0a, 0x00, 0x00,
	0x00, 0x0f, 0xa5, 0x0a, 0x00, 0x00,
	0x00, 0xcf, 0xda, 0x8a, 0x00, 0x00,
	0x00, 0x3f, 0x3f, 0x2a, 0x00, 0x00,
	0x00, 0x3f, 0x3f, 0x2a, 0x00, 0x00,
	0x00, 0x3f, 0x3f, 0x2a, 0x00, 0x00,
	0x00, 0x44, 0xf0, 0x00, 0x00, 0x00,
	0x00, 0x44, 0xf0, 0x00, 0x00, 0x00,
	0x00, 0x44, 0xf0, 0x00, 0x00, 0x00,
	0x00, 0x04, 0xff, 0x00, 0x00, 0x00,
	0x00, 0x04, 0xff, 0xaa, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_03: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_03[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x96, 0x28, 0x00, 0x00,
	0x00, 0x41, 0x3c, 0x3c, 0x00, 0x00,
	0x00, 0x41, 0x3c, 0x3c, 0x00, 0x00,
	0x00, 0x14, 0x3c, 0x3c, 0x88, 0x88,
	0x00, 0x14, 0x3c, 0x69, 0x44, 0x00,
	0x00, 0x00, 0x3c, 0x82, 0x88, 0x88,
	0x00, 0x05, 0x3f, 0x2f, 0x44, 0x00,
	0x00, 0xa5, 0x0f, 0x5a, 0xcc, 0x88,
	0x00, 0xa5, 0x0f, 0x5a, 0x88, 0x00,
	0x00, 0x05, 0x0f, 0x5a, 0x88, 0x00,
	0x00, 0x05, 0x0f, 0x0f, 0xa0, 0x00,
	0x00, 0x05, 0x4f, 0xcf, 0xa0, 0x00,
	0x00, 0x45, 0x9f, 0x3f, 0x00, 0x00,
	0x00, 0x15, 0x3f, 0x3f, 0x00, 0x00,
	0x00, 0x15, 0x2a, 0xf0, 0x00, 0x00,
	0x00, 0x50, 0xa0, 0xff, 0x00, 0x00,
	0x00, 0x50, 0xa0, 0xff, 0x00, 0x00,
	0x00, 0x50, 0xa0, 0x00, 0x00, 0x00,
	0x00, 0x55, 0xaa, 0x00, 0x00, 0x00,
	0x00, 0x55, 0xaa, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_04: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_04[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x69, 0x28, 0x88, 0x88,
	0x00, 0x14, 0x96, 0x3c, 0x44, 0x00,
	0x00, 0x14, 0x96, 0x3c, 0x88, 0x88,
	0x00, 0x14, 0x96, 0x3c, 0x44, 0x00,
	0x00, 0x41, 0x3c, 0x3c, 0xcc, 0x88,
	0x00, 0x00, 0x96, 0x28, 0x88, 0x00,
	0x00, 0x05, 0x3f, 0x2f, 0x0a, 0x00,
	0x00, 0x0f, 0x0f, 0x0f, 0xa0, 0x00,
	0x00, 0xa5, 0x0f, 0x0f, 0xa0, 0x00,
	0x00, 0xa5, 0x0f, 0x0f, 0x00, 0x00,
	0x00, 0xa5, 0x0f, 0x0f, 0x00, 0x00,
	0x00, 0xe5, 0xcf, 0x0f, 0x00, 0x00,
	0x00, 0x15, 0x3f, 0xcf, 0x00, 0x00,
	0x00, 0x15, 0x3f, 0x3f, 0x00, 0x00,
	0x00, 0x50, 0xa0, 0x3f, 0x00, 0x00,
	0x00, 0x55, 0xaa, 0xf0, 0x00, 0x00,
	0x00, 0x55, 0xaa, 0xf0, 0x00, 0x00,
	0x00, 0x00, 0x00, 0xf0, 0x00, 0x00,
	0x00, 0x00, 0x00, 0xff, 0x00, 0x00,
	0x00, 0x00, 0x00, 0xff, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_05: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_05[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x69, 0x28, 0x00, 0x00,
	0x00, 0x14, 0x96, 0x3c, 0x88, 0x00,
	0x00, 0x14, 0x96, 0x3c, 0x44, 0x00,
	0x00, 0x14, 0x3c, 0x3c, 0x88, 0x00,
	0x00, 0x14, 0x3c, 0x3c, 0x44, 0x00,
	0x00, 0x00, 0x3c, 0x28, 0xcc, 0x00,
	0x00, 0x05, 0x3f, 0x2f, 0x88, 0x00,
	0x00, 0x0f, 0x0f, 0x0f, 0x0a, 0x00,
	0x00, 0xa5, 0x0f, 0x0f, 0xa0, 0x00,
	0x00, 0xa5, 0x0f, 0x0f, 0xa0, 0x00,
	0x00, 0x05, 0x0f, 0x0f, 0x00, 0x00,
	0x00, 0x05, 0x0f, 0x0f, 0x00, 0x00,
	0x00, 0x45, 0xcf, 0xcf, 0x00, 0x00,
	0x00, 0x15, 0x3f, 0x3f, 0x00, 0x00,
	0x00, 0x15, 0x3f, 0x3f, 0x00, 0x00,
	0x00, 0x15, 0x2a, 0x3f, 0x00, 0x00,
	0x00, 0x50, 0xa0, 0xf0, 0x00, 0x00,
	0x00, 0x50, 0xa0, 0xf0, 0x00, 0x00,
	0x00, 0x50, 0xa0, 0xf0, 0x00, 0x00,
	0x00, 0x55, 0xaa, 0xff, 0x00, 0x00,
	0x00, 0x55, 0xaa, 0xff, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_06: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_06[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x3c, 0x82, 0x00,
	0x00, 0x00, 0x14, 0x3c, 0x3c, 0x00,
	0x00, 0x00, 0x50, 0xb4, 0x3c, 0x00,
	0x00, 0x00, 0x00, 0xb4, 0x3c, 0x00,
	0x00, 0x44, 0x50, 0xf0, 0x28, 0x00,
	0x00, 0x88, 0x88, 0xf0, 0xa0, 0x00,
	0x44, 0x44, 0x05, 0x0f, 0x1f, 0x00,
	0x00, 0x88, 0x8d, 0x0f, 0xa5, 0x00,
	0x44, 0x44, 0x05, 0x0f, 0xa5, 0x00,
	0x00, 0x88, 0x8d, 0x5a, 0x0f, 0x00,
	0x00, 0x00, 0x50, 0xa5, 0x0f, 0x00,
	0x00, 0x00, 0x45, 0xcf, 0xcf, 0x00,
	0x00, 0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0x00, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0x00, 0xcc, 0xd8, 0x00,
	0x00, 0x00, 0x44, 0xcc, 0xf0, 0x00,
	0x00, 0x04, 0x4c, 0x00, 0x50, 0xa0,
	0x00, 0x04, 0x0c, 0x00, 0x55, 0xaa,
	0x00, 0x00, 0x08, 0x00, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_07: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_07[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x44, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x88, 0x88, 0x3c, 0x82, 0x00,
	0x44, 0x44, 0x14, 0x3c, 0x3c, 0x00,
	0x00, 0x88, 0xd8, 0xb4, 0x3c, 0x00,
	0x44, 0x44, 0x00, 0xb4, 0x3c, 0x00,
	0x00, 0x88, 0xd8, 0xf0, 0x28, 0x00,
	0x00, 0x44, 0x00, 0xf0, 0xa0, 0x00,
	0x00, 0x44, 0x8d, 0x0f, 0x1f, 0x00,
	0x00, 0x00, 0xa5, 0x5a, 0xa5, 0x00,
	0x00, 0x00, 0x05, 0x0f, 0xa5, 0x00,
	0x00, 0x00, 0x05, 0x0f, 0x5a, 0x00,
	0x00, 0x00, 0x05, 0x0f, 0xf0, 0x00,
	0x00, 0x00, 0x45, 0xda, 0xe5, 0x00,
	0x00, 0x00, 0x15, 0x7a, 0x3f, 0x00,
	0x00, 0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0x15, 0x3f, 0x2a, 0x00,
	0x00, 0x00, 0x00, 0xf0, 0xcc, 0x00,
	0x00, 0x00, 0x50, 0xf0, 0xcc, 0x00,
	0x00, 0x55, 0xfa, 0x00, 0x44, 0x88,
	0x00, 0x55, 0xff, 0x00, 0x04, 0x08,
	0x00, 0x00, 0xaa, 0x00, 0x0c, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_08: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_08[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x44, 0x00, 0x3c, 0x82, 0x00,
	0x00, 0x88, 0x9c, 0x3c, 0x69, 0x00,
	0x44, 0x44, 0x50, 0x3c, 0x3c, 0x00,
	0x00, 0x88, 0x88, 0xb4, 0x3c, 0x00,
	0x44, 0x44, 0x50, 0xb4, 0x3c, 0x00,
	0x00, 0x88, 0x88, 0xf0, 0xa0, 0x00,
	0x00, 0x44, 0x05, 0x0f, 0x1f, 0x00,
	0x00, 0x44, 0x8d, 0x5a, 0x0f, 0x00,
	0x00, 0x00, 0x8d, 0x5a, 0x0f, 0x00,
	0x00, 0x00, 0xa5, 0x0f, 0xa5, 0x00,
	0x00, 0x00, 0x05, 0x5a, 0x0f, 0x00,
	0x00, 0x00, 0x05, 0x5a, 0x0f, 0x00,
	0x00, 0x00, 0x45, 0xe5, 0xcf, 0x00,
	0x00, 0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0x00, 0xf0, 0x88, 0x00,
	0x00, 0x00, 0x00, 0xf0, 0x88, 0x00,
	0x00, 0x00, 0x00, 0xf0, 0x88, 0x00,
	0x00, 0x00, 0x00, 0xff, 0x08, 0x00,
	0x00, 0x00, 0x55, 0xff, 0x08, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_09: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_09[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x44, 0x14, 0x69, 0x00, 0x00,
	0x00, 0x88, 0xd8, 0xf0, 0x28, 0x00,
	0x44, 0x44, 0x28, 0xa0, 0x28, 0x00,
	0x00, 0x88, 0xd8, 0xf0, 0xa0, 0x00,
	0x44, 0x44, 0xf0, 0x50, 0xa0, 0x00,
	0x00, 0x88, 0x50, 0xf0, 0x00, 0x00,
	0x00, 0xd8, 0x1f, 0x3f, 0x0a, 0x00,
	0x50, 0xd8, 0x0f, 0x0f, 0x0f, 0x00,
	0x50, 0xa0, 0x0f, 0x0f, 0x5a, 0x00,
	0x00, 0x88, 0x0f, 0x0f, 0x5a, 0x00,
	0x00, 0x00, 0x0f, 0x5a, 0xf0, 0x00,
	0x00, 0x00, 0x0f, 0xcf, 0x0a, 0x00,
	0x00, 0x00, 0xcf, 0x3f, 0x2a, 0x00,
	0x00, 0x00, 0x3f, 0x3f, 0x2a, 0x00,
	0x00, 0x00, 0x3f, 0x50, 0xa0, 0x00,
	0x00, 0x00, 0xf0, 0x55, 0xaa, 0x00,
	0x00, 0x00, 0xf0, 0x55, 0xaa, 0x00,
	0x00, 0x00, 0xf0, 0x00, 0x00, 0x00,
	0x00, 0x00, 0xff, 0x00, 0x00, 0x00,
	0x00, 0x00, 0xff, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_10: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_10[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x14, 0xc3, 0x00, 0x00,
	0x00, 0x00, 0x78, 0xf0, 0x28, 0x00,
	0x00, 0x00, 0x28, 0xa0, 0x28, 0x00,
	0x00, 0x88, 0xf0, 0xf0, 0xa0, 0x00,
	0x44, 0x44, 0xf0, 0x50, 0xa0, 0x00,
	0x00, 0x88, 0x50, 0xf0, 0x00, 0x00,
	0x44, 0x44, 0x1f, 0x3f, 0x0f, 0x00,
	0x00, 0x88, 0x0f, 0x0f, 0x5a, 0x00,
	0x00, 0x44, 0x0f, 0x0f, 0x5a, 0xa0,
	0x00, 0x44, 0x0f, 0x0f, 0x0a, 0xa0,
	0x00, 0xf0, 0x0f, 0x0f, 0x0a, 0xa0,
	0x00, 0x50, 0xcf, 0x8f, 0x0a, 0xa0,
	0x00, 0x00, 0x3f, 0x6f, 0x8a, 0x00,
	0x00, 0x00, 0x3f, 0x3f, 0x2a, 0x00,
	0x00, 0x00, 0xf0, 0x15, 0x2a, 0x00,
	0x00, 0x00, 0xff, 0x50, 0xa0, 0x00,
	0x00, 0x00, 0xff, 0x50, 0xa0, 0x00,
	0x00, 0x00, 0x00, 0x50, 0xa0, 0x00,
	0x00, 0x00, 0x00, 0x55, 0xaa, 0x00,
	0x00, 0x00, 0x00, 0x55, 0xaa, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

// Tile g_tile_player1_11: 12x25 pixels, 6x25 bytes.
const u8 g_tile_player1_11[6 * 25] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x14, 0x69, 0x00, 0x00,
	0x00, 0x44, 0x78, 0xf0, 0x28, 0x00,
	0x00, 0x88, 0x28, 0xa0, 0x28, 0x00,
	0x00, 0x44, 0xf0, 0xf0, 0xa0, 0x00,
	0x00, 0x88, 0xf0, 0x50, 0xa0, 0x00,
	0x00, 0xcc, 0x50, 0xf0, 0x00, 0x00,
	0x00, 0x44, 0x1f, 0x3f, 0x0a, 0x00,
	0x00, 0xe4, 0x0f, 0x0f, 0x0f, 0x00,
	0x00, 0xf0, 0x0f, 0x0f, 0x5a, 0x00,
	0x00, 0x44, 0x0f, 0x0f, 0x5a, 0x00,
	0x00, 0x00, 0x0f, 0x0f, 0x5a, 0x00,
	0x00, 0x00, 0x0f, 0x0f, 0x5a, 0x00,
	0x00, 0x00, 0xcf, 0xcf, 0x8a, 0x00,
	0x00, 0x00, 0x3f, 0x3f, 0x2a, 0x00,
	0x00, 0x00, 0x3f, 0x3f, 0x2a, 0x00,
	0x00, 0x00, 0x3f, 0x15, 0x2a, 0x00,
	0x00, 0x00, 0xf0, 0x50, 0xa0, 0x00,
	0x00, 0x00, 0xf0, 0x50, 0xa0, 0x00,
	0x00, 0x00, 0xf0, 0x50, 0xa0, 0x00,
	0x00, 0x00, 0xff, 0x55, 0xaa, 0x00,
	0x00, 0x00, 0xff, 0x55, 0xaa, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};


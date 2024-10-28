//go:build go1.18 && !go1.21
// +build go1.18,!go1.21

package mathext

import (
	"math"

	constraintsext "github.com/khulnasoft-lab/utils/constraints"
)

// Min returns the smaller value.
//
// NOTE: this function does not distinguish between 0.0 and -0.0 floating point values. // For example, Min(0.0, -0.0) and Min(-0.0, 0.0) will both return -0.0 without // checking IEEE 754 sign bits.
func Min[N constraintsext.Number](x, y N) N {
	// special case for float
	// IEEE 754 says that only NaNs satisfy f != f.
	if x != x || y != y {
		return N(math.NaN())
	}

	if x < y {
		return x
	}
	return y
}

#ifndef OPENMM_CUDAAMOEBAKERNELSOURCES_H_
#define OPENMM_CUDAAMOEBAKERNELSOURCES_H_

/* -------------------------------------------------------------------------- *
 *                                   OpenMM                                   *
 * -------------------------------------------------------------------------- *
 * This is part of the OpenMM molecular simulation toolkit originating from   *
 * Simbios, the NIH National Center for Physics-Based Simulation of           *
 * Biological Structures at Stanford, funded under the NIH Roadmap for        *
 * Medical Research, grant U54 GM072970. See https://simtk.org.               *
 *                                                                            *
 * Portions copyright (c) 2010-2012 Stanford University and the Authors.      *
 * Authors: Peter Eastman                                                     *
 * Contributors:                                                              *
 *                                                                            *
 * This program is free software: you can redistribute it and/or modify       *
 * it under the terms of the GNU Lesser General Public License as published   *
 * by the Free Software Foundation, either version 3 of the License, or       *
 * (at your option) any later version.                                        *
 *                                                                            *
 * This program is distributed in the hope that it will be useful,            *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of             *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              *
 * GNU Lesser General Public License for more details.                        *
 *                                                                            *
 * You should have received a copy of the GNU Lesser General Public License   *
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.      *
 * -------------------------------------------------------------------------- */

#include "openmm/internal/windowsExport.h"
#include <string>

namespace OpenMM {

/**
 * This class is a central holding place for the source code of CUDA kernels.
 * The CMake build script inserts declarations into it based on the .cu files in the
 * kernels subfolder.
 */

class OPENMM_EXPORT CudaAmoebaKernelSources {
public:
static const std::string amoebaAngleForce;
static const std::string amoebaBondForce;
static const std::string amoebaGk;
static const std::string amoebaInPlaneForce;
static const std::string amoebaOutOfPlaneBendForce;
static const std::string amoebaPiTorsionForce;
static const std::string amoebaStretchBendForce;
static const std::string amoebaTorsionTorsionForce;
static const std::string amoebaVdwForce1;
static const std::string amoebaVdwForce2;
static const std::string amoebaWcaForce;
static const std::string bicubic;
static const std::string gkEDiffPairForce;
static const std::string gkPairForce1;
static const std::string gkPairForce2;
static const std::string hippoComputeField;
static const std::string hippoFixedField;
static const std::string hippoInteraction;
static const std::string hippoInteractionHeader;
static const std::string hippoMultipoles;
static const std::string hippoMutualField;
static const std::string hippoNonbonded;
static const std::string hippoNonbondedExceptions;
static const std::string multipoleElectrostatics;
static const std::string multipoleFixedField;
static const std::string multipoleInducedField;
static const std::string multipolePme;
static const std::string multipoles;
static const std::string pmeMultipoleElectrostatics;
static const std::string sphericalMultipoles;

};

} // namespace OpenMM

#endif /*OPENMM_CUDAAMOEBAKERNELSOURCES_H_*/

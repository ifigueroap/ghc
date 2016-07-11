{-# LANGUAGE CPP #-}
module Config where

#include "ghc_boot_platform.h"

data IntegerLibrary = IntegerGMP
                    | IntegerSimple
                    deriving Eq

cBuildPlatformString :: String
cBuildPlatformString = BuildPlatform_NAME
cHostPlatformString :: String
cHostPlatformString = HostPlatform_NAME
cTargetPlatformString :: String
cTargetPlatformString = TargetPlatform_NAME

cProjectName          :: String
cProjectName          = "The Glorious Glasgow Haskell Compilation System"
cProjectGitCommitId   :: String
cProjectGitCommitId   = "4986837f8168cacf95c24fecc84d7b36c47f3c11"
cProjectVersion       :: String
cProjectVersion       = "8.0.1"
cProjectVersionInt    :: String
cProjectVersionInt    = "800"
cProjectPatchLevel    :: String
cProjectPatchLevel    = "1"
cProjectPatchLevel1   :: String
cProjectPatchLevel1   = "1"
cProjectPatchLevel2   :: String
cProjectPatchLevel2   = ""
cBooterVersion        :: String
cBooterVersion        = "8.0.1"
cStage                :: String
cStage                = show (STAGE :: Int)
cIntegerLibrary       :: String
cIntegerLibrary       = "integer-gmp"
cIntegerLibraryType   :: IntegerLibrary
cIntegerLibraryType   = IntegerGMP
cSupportsSplitObjs    :: String
cSupportsSplitObjs    = "YES"
cGhcWithInterpreter   :: String
cGhcWithInterpreter   = "YES"
cGhcWithNativeCodeGen :: String
cGhcWithNativeCodeGen = "YES"
cGhcWithSMP           :: String
cGhcWithSMP           = "YES"
cGhcRTSWays           :: String
cGhcRTSWays           = "l debug thr thr_debug thr_l  dyn debug_dyn thr_dyn thr_debug_dyn l_dyn thr_l_dyn"
cGhcRtsWithLibdw      :: Bool
cGhcRtsWithLibdw      = False
cGhcEnableTablesNextToCode :: String
cGhcEnableTablesNextToCode = "YES"
cLeadingUnderscore    :: String
cLeadingUnderscore    = "YES"
cGHC_UNLIT_PGM        :: String
cGHC_UNLIT_PGM        = "unlit"
cGHC_SPLIT_PGM        :: String
cGHC_SPLIT_PGM        = "ghc-split"
cLibFFI               :: Bool
cLibFFI               = False
cGhcThreaded :: Bool
cGhcThreaded = True
cGhcDebugged :: Bool
cGhcDebugged = False

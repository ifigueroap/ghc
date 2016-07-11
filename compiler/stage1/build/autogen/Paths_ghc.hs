{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_ghc (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [8,0,1] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/usr/local/bin"
libdir     = "/usr/local/lib/x86_64-osx-ghc-8.0.1/ghc-8.0.1"
datadir    = "/usr/local/share/x86_64-osx-ghc-8.0.1/ghc-8.0.1"
libexecdir = "/usr/local/libexec"
sysconfdir = "/usr/local/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "ghc_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "ghc_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "ghc_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "ghc_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "ghc_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)

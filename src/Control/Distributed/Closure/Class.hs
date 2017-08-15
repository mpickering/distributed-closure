-- | 'Closure' is not a functor, since we cannot map arbitrary functions over
-- it. But it sure looks like one, and an applicative one at that. What we can
-- do is map /static pointers to/ arbitrary functions over it (or in general,
-- closures). 'Closure' is not just an applicative functor, it's also a monad,
-- as well as a comonad, if again we limit the function space to those functions
-- that can be statically pointed to.
--
-- In fact an entire hierarchy of classes mirroring the standard classes can be
-- defined, where nearly the only difference lies in the fact that higher-order
-- arguments must be a proof of /static/-ness (i.e. a 'Closure'). The other
-- difference is that composing static values requires a proof of typeability,
-- so we carry those around ('Typeable' constraints).
--
-- This module defines just such a class hierarchy in the category of static
-- functions (aka values of type @'Closure' (a -> b)@).

{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE StaticPointers #-}
{-# LANGUAGE UndecidableInstances #-} -- For StaticMonad instance.

module Control.Distributed.Closure.Class
  ( Static(..)
  , StaticFunctor(..)
  , StaticApply(..)
  , StaticBind(..)
  , StaticApplicative(..)
  , StaticMonad
  , staticReturn
  , StaticExtend(..)
  , StaticComonad(..)
  ) where

import Control.Distributed.Closure
import Data.Typeable (Typeable)

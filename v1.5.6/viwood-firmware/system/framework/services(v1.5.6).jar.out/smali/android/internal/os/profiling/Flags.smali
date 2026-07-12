.class public abstract Landroid/internal/os/profiling/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field public static FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/internal/os/profiling/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/internal/os/profiling/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/internal/os/profiling/Flags;->FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlags;

    return-void
.end method

.method public static systemTriggeredProfilingNew()Z
    .locals 1

    .line 27
    sget-object v0, Landroid/internal/os/profiling/Flags;->FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlags;

    invoke-interface {v0}, Landroid/internal/os/profiling/FeatureFlags;->systemTriggeredProfilingNew()Z

    move-result v0

    return v0
.end method

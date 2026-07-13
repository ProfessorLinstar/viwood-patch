.class public final Landroid/internal/os/profiling/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/internal/os/profiling/FeatureFlags;


# static fields
.field public static volatile isCached:Z = false

.field public static persistQueue:Z = false

.field public static redactionEnabled:Z = false

.field public static systemTriggeredProfilingNew:Z = false

.field public static telemetryApis:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 4

    .line 17
    const-string p0, "FeatureFlagsImplExport"

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.os.profiling"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 18
    const-string/jumbo v2, "persist_queue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/internal/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    .line 19
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    .line 20
    const-string/jumbo v2, "system_triggered_profiling_new"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    .line 21
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->telemetryApis:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 28
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_2
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    return-void
.end method

.method public systemTriggeredProfilingNew()Z
    .locals 1

    .line 50
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/internal/os/profiling/FeatureFlagsImpl;->init()V

    .line 53
    :cond_0
    sget-boolean p0, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    return p0
.end method

.class public abstract Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$BatteryStatsHolder;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"


# static fields
.field public static final INSTANCE:Landroid/os/BatteryStatsInternal;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Landroid/os/BatteryStatsInternal;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$BatteryStatsHolder;->INSTANCE:Landroid/os/BatteryStatsInternal;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 481
    const-class v0, Landroid/os/BatteryStatsInternal;

    .line 482
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$BatteryStatsHolder;->INSTANCE:Landroid/os/BatteryStatsInternal;

    return-void
.end method

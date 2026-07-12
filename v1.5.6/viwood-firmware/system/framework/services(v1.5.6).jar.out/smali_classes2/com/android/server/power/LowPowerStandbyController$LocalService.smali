.class public final Lcom/android/server/power/LowPowerStandbyController$LocalService;
.super Lcom/android/server/power/LowPowerStandbyControllerInternal;
.source "LowPowerStandbyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 1422
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyControllerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    return-void
.end method


# virtual methods
.method public addToAllowlist(II)V
    .locals 0

    .line 1425
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method

.method public removeFromAllowlist(II)V
    .locals 0

    .line 1430
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method

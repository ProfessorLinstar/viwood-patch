.class public final Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppAdded(I)V
    .locals 1

    .line 1449
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method

.method public onAppRemoved(I)V
    .locals 1

    .line 1454
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method

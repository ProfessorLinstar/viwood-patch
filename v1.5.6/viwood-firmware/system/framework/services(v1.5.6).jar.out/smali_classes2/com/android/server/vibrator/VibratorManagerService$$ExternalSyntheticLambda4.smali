.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Landroid/os/VibrationEffect;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/os/VibrationEffect;

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->$r8$lambda$dPajBvP8G0Ta9blw1JsgCuv-t5A(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

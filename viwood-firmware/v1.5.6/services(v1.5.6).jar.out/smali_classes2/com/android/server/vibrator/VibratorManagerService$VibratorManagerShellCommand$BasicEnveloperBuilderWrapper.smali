.class public Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;


# instance fields
.field public mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2797
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public addControlPoint(FFJ)V
    .locals 0

    .line 2807
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.method public build()Landroid/os/VibrationEffect;
    .locals 0

    .line 2818
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public reset(F)V
    .locals 1

    .line 2812
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 2813
    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.method public setInitialSharpness(F)V
    .locals 0

    .line 2802
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.class public Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;
.super Landroid/database/ContentObserver;
.source "BrightnessWearBedtimeModeModifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 67
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    invoke-static {p1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->-$$Nest$fgetmContext(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;)Landroid/content/Context;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 67
    const-string v0, "bedtime_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 71
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->-$$Nest$fputmIsActive(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Z)V

    .line 72
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

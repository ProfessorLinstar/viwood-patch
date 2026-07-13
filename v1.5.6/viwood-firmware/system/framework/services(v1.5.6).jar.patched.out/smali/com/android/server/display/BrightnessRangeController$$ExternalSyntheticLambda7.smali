.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayDeviceConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    return-void
.end method


# virtual methods
.method public final getHdrBrightnessFromSdr(FF)F
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FF)F

    move-result p0

    return p0
.end method

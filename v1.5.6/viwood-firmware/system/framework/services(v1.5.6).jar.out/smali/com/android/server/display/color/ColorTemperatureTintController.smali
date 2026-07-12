.class public abstract Lcom/android/server/display/color/ColorTemperatureTintController;
.super Lcom/android/server/display/color/TintController;
.source "ColorTemperatureTintController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract computeMatrixForCct(I)[F
.end method

.method public abstract getAppliedCct()I
.end method

.method public abstract getDisabledCct()I
.end method

.method public abstract getEvaluator()Lcom/android/server/display/color/CctEvaluator;
.end method

.method public abstract getTargetCct()I
.end method

.method public abstract setAppliedCct(I)V
.end method

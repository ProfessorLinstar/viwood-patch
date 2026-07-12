.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessRangeController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessRangeController;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/BrightnessRangeController;

    iput p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$1:F

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/BrightnessRangeController;

    iget p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$1:F

    invoke-static {v0, p0}, Lcom/android/server/display/BrightnessRangeController;->$r8$lambda$p1Nigl72IgjP0-A2CBQzXT9CNbM(Lcom/android/server/display/BrightnessRangeController;F)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iput p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$1:I

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$2:F

    invoke-static {v0, v1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->$r8$lambda$5LoNAxwgtcr-skeyF7JY58bnPrw(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V

    return-void
.end method

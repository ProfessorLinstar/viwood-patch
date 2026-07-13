.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;


# direct methods
.method public static synthetic $r8$lambda$syL2Q9eql9hG0-EAx6p4vg3nSqY(FLcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0

    .line 82
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->setAmbientLux(F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmbientLuxChange(F)V
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->-$$Nest$fgetmModifiers(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

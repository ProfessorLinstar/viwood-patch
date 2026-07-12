.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessRangeController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessRangeController;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/BrightnessRangeController;

    iput p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/BrightnessRangeController;

    iget p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/display/BrightnessRangeController;->$r8$lambda$zpmKQQW2rDvBS46nbBqX3mXvWvI(Lcom/android/server/display/BrightnessRangeController;I)Z

    move-result p0

    return p0
.end method

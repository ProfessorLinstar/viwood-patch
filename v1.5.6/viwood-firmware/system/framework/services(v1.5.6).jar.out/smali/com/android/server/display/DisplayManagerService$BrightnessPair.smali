.class public Lcom/android/server/display/DisplayManagerService$BrightnessPair;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# instance fields
.field public brightness:F

.field public sdrBrightness:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 6192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6193
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 6194
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    return-void
.end method

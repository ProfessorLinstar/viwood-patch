.class public Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
.super Ljava/lang/Object;
.source "RotaryInputGraphView.java"


# instance fields
.field public mPos:F

.field public mTime:J


# direct methods
.method public constructor <init>(FJ)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 256
    iput-wide p2, p0, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    return-void
.end method

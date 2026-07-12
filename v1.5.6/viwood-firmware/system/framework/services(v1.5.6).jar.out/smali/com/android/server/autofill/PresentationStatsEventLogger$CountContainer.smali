.class public Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# instance fields
.field public mAvailableCount:I

.field public mAvailablePccCount:I

.field public mAvailablePccOnlyCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 466
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    .line 467
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    .line 468
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccOnlyCount:I

    return-void
.end method

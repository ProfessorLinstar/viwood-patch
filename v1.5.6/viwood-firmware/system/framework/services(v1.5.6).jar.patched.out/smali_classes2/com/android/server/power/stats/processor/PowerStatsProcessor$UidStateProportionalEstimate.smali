.class public Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
.super Ljava/lang/Object;
.source "PowerStatsProcessor.java"


# instance fields
.field public intermediates:Ljava/lang/Object;

.field public final stateValues:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    return-void
.end method

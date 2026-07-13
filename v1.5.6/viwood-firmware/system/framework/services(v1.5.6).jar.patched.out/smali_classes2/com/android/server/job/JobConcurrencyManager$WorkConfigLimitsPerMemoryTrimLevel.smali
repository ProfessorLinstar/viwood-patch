.class public Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# instance fields
.field public final critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V
    .locals 0

    .line 2540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2541
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 2542
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 2543
    iput-object p3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 2544
    iput-object p4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    return-void
.end method

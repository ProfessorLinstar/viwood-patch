.class public Lcom/android/server/BinderCallsStatsService$Internal;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    return-void
.end method


# virtual methods
.method public getExportedCallStats()Ljava/util/ArrayList;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getExportedExceptionStats()Landroid/util/ArrayMap;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    return-void
.end method

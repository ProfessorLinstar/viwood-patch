.class public Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# instance fields
.field public expirationTime:J

.field public lastUsage:J

.field public remainingQuota:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;-><init>()V

    return-void
.end method

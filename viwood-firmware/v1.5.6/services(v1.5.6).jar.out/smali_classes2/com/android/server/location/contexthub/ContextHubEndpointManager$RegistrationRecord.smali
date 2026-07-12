.class public Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;
.super Ljava/lang/Object;
.source "ContextHubEndpointManager.java"


# instance fields
.field public final mAction:I

.field public final mBroker:Ljava/lang/String;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;Ljava/lang/String;I)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    .line 147
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;->mAction:I

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;->mTimestamp:J

    invoke-static {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->formatDateFromTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;->mAction:I

    if-nez v1, :cond_0

    const-string v1, "+ "

    goto :goto_0

    :cond_0
    const-string v1, "- "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

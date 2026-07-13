.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# instance fields
.field public mEvents:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatElapsed(J)Ljava/lang/String;
    .locals 2

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p0, v0

    .line 163
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 118
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    if-ge v2, p2, :cond_6

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    .line 120
    iget v5, v3, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq p3, v5, :cond_0

    if-eq v5, v4, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 127
    invoke-virtual {p0, v7}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 126
    const-string v6, "#%-2d %s %s: "

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-ne p3, v4, :cond_1

    .line 129
    const-string/jumbo v4, "user="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 132
    const-string v4, "agent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_2

    .line 134
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {v4}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    :cond_3
    :goto_1
    iget v4, v3, Lcom/android/server/trust/TrustArchive$Event;->type:I

    if-eqz v4, :cond_5

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", managingTrust="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v3, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 141
    :cond_5
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    iget-wide v5, v3, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 142
    invoke-static {v5, v6}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/trust/TrustArchive;->dumpGrantFlags(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 141
    const-string v4, ", message=\"%s\", duration=%s, flags=%s"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final dumpGrantFlags(I)Ljava/lang/String;
    .locals 2

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x7c

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    const-string v0, "INITIATED_BY_USER"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 206
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    const-string p1, "DISMISS_KEYGUARD"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x30

    .line 210
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpType(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :pswitch_0
    const-string p0, "DevicePolicyChanged"

    return-object p0

    .line 191
    :pswitch_1
    const-string p0, "ManagingTrust"

    return-object p0

    .line 189
    :pswitch_2
    const-string p0, "AgentStopped"

    return-object p0

    .line 187
    :pswitch_3
    const-string p0, "AgentConnected"

    return-object p0

    .line 185
    :pswitch_4
    const-string p0, "AgentDied"

    return-object p0

    .line 183
    :pswitch_5
    const-string p0, "TrustTimeout"

    return-object p0

    .line 181
    :pswitch_6
    const-string p0, "RevokeTrust"

    return-object p0

    .line 179
    :pswitch_7
    const-string p0, "GrantTrust"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .locals 10

    .line 92
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .locals 10

    .line 88
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .locals 10

    .line 96
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logDevicePolicyChanged()V
    .locals 10

    .line 104
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V
    .locals 10

    .line 75
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .locals 10

    .line 100
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .locals 10

    .line 80
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .locals 10

    .line 84
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

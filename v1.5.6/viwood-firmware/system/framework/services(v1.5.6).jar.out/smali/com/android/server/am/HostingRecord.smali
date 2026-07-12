.class public final Lcom/android/server/am/HostingRecord;
.super Ljava/lang/Object;
.source "HostingRecord.java"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mDefiningPackageName:Ljava/lang/String;

.field public final mDefiningProcessName:Ljava/lang/String;

.field public final mDefiningUid:I

.field public final mHostingName:Ljava/lang/String;

.field public final mHostingType:Ljava/lang/String;

.field public final mHostingZygote:I

.field public final mIsTopApp:Z

.field public final mTriggerType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v8, 0x0

    .line 114
    const-string/jumbo v9, "unknown"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 0

    .line 150
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 133
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 125
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .locals 10

    .line 139
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const-string/jumbo v9, "unknown"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/4 v8, 0x0

    .line 154
    const-string/jumbo v9, "unknown"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 164
    iput p3, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 165
    iput-object p4, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    .line 166
    iput p5, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 167
    iput-boolean p6, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    .line 168
    iput-object p7, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    .line 169
    iput-object p8, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    .line 170
    iput-object p9, p0, Lcom/android/server/am/HostingRecord;->mTriggerType:Ljava/lang/String;

    return-void
.end method

.method public static byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;
    .locals 10

    .line 250
    new-instance v0, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const-string/jumbo v9, "unknown"

    const-string v1, ""

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static byWebviewZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;
    .locals 10

    .line 236
    new-instance v0, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const-string/jumbo v9, "unknown"

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHostingTypeIdStatsd(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v15, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    const/16 v16, 0xd

    goto/16 :goto_0

    :sswitch_0
    const/16 v16, 0xd

    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v15, v16

    goto/16 :goto_0

    :sswitch_1
    const/16 v16, 0xd

    const-string v1, "added application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v15, v2

    goto/16 :goto_0

    :sswitch_2
    const/16 v16, 0xd

    const-string v1, "content provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    move v15, v3

    goto/16 :goto_0

    :sswitch_3
    const/16 v16, 0xd

    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    move v15, v4

    goto/16 :goto_0

    :sswitch_4
    const/16 v16, 0xd

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    move v15, v5

    goto/16 :goto_0

    :sswitch_5
    const/16 v16, 0xd

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    move v15, v6

    goto/16 :goto_0

    :sswitch_6
    const/16 v16, 0xd

    const-string/jumbo v1, "next-activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    move v15, v7

    goto/16 :goto_0

    :sswitch_7
    const/16 v16, 0xd

    const-string/jumbo v1, "on-hold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v15, v8

    goto :goto_0

    :sswitch_8
    const/16 v16, 0xd

    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v15, v9

    goto :goto_0

    :sswitch_9
    const/16 v16, 0xd

    const-string/jumbo v1, "next-top-activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v15, v10

    goto :goto_0

    :sswitch_a
    const/16 v16, 0xd

    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v15, v11

    goto :goto_0

    :sswitch_b
    const/16 v16, 0xd

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v15, v12

    goto :goto_0

    :sswitch_c
    const/16 v16, 0xd

    const-string/jumbo v1, "link fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v15, v13

    goto :goto_0

    :sswitch_d
    const/16 v16, 0xd

    const-string/jumbo v1, "top-activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move v15, v14

    :goto_0
    packed-switch v15, :pswitch_data_0

    return v14

    :pswitch_0
    return v3

    :pswitch_1
    return v12

    :pswitch_2
    return v9

    :pswitch_3
    return v4

    :pswitch_4
    const/16 v0, 0xe

    return v0

    :pswitch_5
    return v2

    :pswitch_6
    return v6

    :pswitch_7
    return v7

    :pswitch_8
    return v11

    :pswitch_9
    return v5

    :pswitch_a
    return v10

    :pswitch_b
    return v13

    :pswitch_c
    return v8

    :pswitch_d
    return v16

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66e29b79 -> :sswitch_d
        -0x644efc7c -> :sswitch_c
        -0x62b40cf1 -> :sswitch_b
        -0x607e173f -> :sswitch_a
        -0x5af75edf -> :sswitch_9
        -0x533f8a3e -> :sswitch_8
        -0x51cc2413 -> :sswitch_7
        -0x50ce7357 -> :sswitch_6
        -0x34e38dd1 -> :sswitch_5
        0x0 -> :sswitch_4
        0x416a9e0f -> :sswitch_3
        0x548ba9b8 -> :sswitch_2
        0x61951230 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static getTriggerTypeForStatsd(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "push_message"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "job"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "push_message_over_quota"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77443836 -> :sswitch_3
        0x19bbd -> :sswitch_2
        0x5897a51 -> :sswitch_1
        0x28839be2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isTypeActivity(Ljava/lang/String;)Z
    .locals 1

    .line 330
    const-string v0, "activity"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "next-activity"

    .line 331
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "next-top-activity"

    .line 332
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "top-activity"

    .line 333
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public getDefiningPackageName()Ljava/lang/String;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getDefiningProcessName()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public getDefiningUid()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggerType()Ljava/lang/String;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mTriggerType:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    return-object p0
.end method

.method public isTopApp()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    return p0
.end method

.method public isTypeActivity()Z
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/HostingRecord;->isTypeActivity(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public usesAppZygote()Z
    .locals 1

    .line 259
    iget p0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public usesWebviewZygote()Z
    .locals 1

    .line 266
    iget p0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.class public abstract Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# direct methods
.method public static dumpsys([Landroid/hardware/power/stats/EnergyConsumer;Ljava/io/PrintWriter;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 534
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnergyConsumerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Ordinal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget-byte v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getProtoBytes([Landroid/hardware/power/stats/EnergyConsumer;)[B
    .locals 1

    .line 435
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 436
    invoke-static {p0, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    .line 437
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 444
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const-wide v1, 0x20b00000001L

    .line 445
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 446
    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 447
    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 448
    aget-object v3, p0, v0

    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const-wide v4, 0x10500000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 449
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    const-wide v4, 0x10900000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 450
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

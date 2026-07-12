.class public Lcom/android/server/powerstats/PowerStatsLogger$1;
.super Ljava/lang/Object;
.source "PowerStatsLogger.java"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;


# instance fields
.field public final synthetic val$pos:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 149
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadDataElement([B)V
    .locals 2

    .line 153
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 159
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p1

    .line 160
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-static {p1, p0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 163
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsLogger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to write energy meter data to incident report."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

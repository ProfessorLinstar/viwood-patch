.class public Lcom/android/server/biometrics/SensorConfig;
.super Ljava/lang/Object;
.source "SensorConfig.java"


# instance fields
.field public final id:I

.field public final modality:I

.field public final strength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/SensorConfig;->id:I

    const/4 v0, 0x1

    .line 32
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/SensorConfig;->modality:I

    const/4 v0, 0x2

    .line 33
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/SensorConfig;->strength:I

    return-void
.end method

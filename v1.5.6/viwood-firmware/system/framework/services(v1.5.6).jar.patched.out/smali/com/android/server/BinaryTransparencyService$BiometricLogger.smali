.class public Lcom/android/server/BinaryTransparencyService$BiometricLogger;
.super Ljava/lang/Object;
.source "BinaryTransparencyService.java"


# static fields
.field public static final sInstance:Lcom/android/server/BinaryTransparencyService$BiometricLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1140
    new-instance v0, Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    invoke-direct {v0}, Lcom/android/server/BinaryTransparencyService$BiometricLogger;-><init>()V

    sput-object v0, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->sInstance:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/BinaryTransparencyService$BiometricLogger;
    .locals 1

    .line 1145
    sget-object v0, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->sInstance:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    return-object v0
.end method


# virtual methods
.method public logStats(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/16 p0, 0x24b

    .line 1164
    invoke-static/range {p0 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

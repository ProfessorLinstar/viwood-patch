.class public Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
.super Ljava/lang/Object;
.source "SignedConfig.java"


# instance fields
.field public final maxSdk:I

.field public final minSdk:I

.field public final values:Ljava/util/Map;


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    .line 75
    iput p2, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    .line 76
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    return-void
.end method

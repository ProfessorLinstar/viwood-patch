.class public Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;
.super Ljava/lang/Object;
.source "AudioManagerRouteController.java"


# instance fields
.field public final mDefaultRouteId:Ljava/lang/String;

.field public final mMediaRoute2InfoType:I

.field public final mNameResource:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput p1, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    .line 632
    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mDefaultRouteId:Ljava/lang/String;

    .line 633
    iput p3, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mNameResource:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

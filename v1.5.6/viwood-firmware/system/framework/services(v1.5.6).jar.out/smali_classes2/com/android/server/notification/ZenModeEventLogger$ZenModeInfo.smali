.class public Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
.super Ljava/lang/Object;
.source "ZenModeEventLogger.java"


# instance fields
.field public final mConfig:Landroid/service/notification/ZenModeConfig;

.field public final mPolicy:Landroid/app/NotificationManager$Policy;

.field public final mZenMode:I


# direct methods
.method public constructor <init>(ILandroid/service/notification/ZenModeConfig;Landroid/app/NotificationManager$Policy;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mZenMode:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 236
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz p3, :cond_1

    .line 237
    invoke-virtual {p3}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-void
.end method

.class public Lcom/android/server/notification/NotificationAttentionHelper$Signals;
.super Ljava/lang/Object;
.source "NotificationAttentionHelper.java"


# instance fields
.field public final isCurrentProfile:Z

.field public final listenerHints:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetisCurrentProfile(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->isCurrentProfile:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlistenerHints(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->listenerHints:I

    return p0
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->isCurrentProfile:Z

    .line 1200
    iput p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->listenerHints:I

    return-void
.end method

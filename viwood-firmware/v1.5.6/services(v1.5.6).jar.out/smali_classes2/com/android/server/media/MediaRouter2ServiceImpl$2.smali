.class public Lcom/android/server/media/MediaRouter2ServiceImpl$2;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 187
    const-string v0, "android:media_routing_control"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {p0, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$mrevokeManagerRecordAccessIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl;Ljava/lang/String;I)V

    .line 192
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

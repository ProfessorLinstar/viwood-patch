.class public Lcom/android/server/pm/InstantAppResolverConnection$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "InstantAppResolverConnection.java"


# instance fields
.field public final synthetic val$callback:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

.field public final synthetic val$callbackHandler:Landroid/os/Handler;

.field public final synthetic val$startTime:J


# direct methods
.method public static synthetic $r8$lambda$4KiXaFsakX0utsiRk3ODSEkT6tM(Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;->onPhaseTwoResolved(Ljava/util/List;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;J)V
    .locals 0

    .line 119
    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

    iput-wide p4, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 4

    .line 122
    const-string v0, "android.app.extra.RESOLVE_INFO"

    const-class v1, Landroid/content/pm/InstantAppResolveInfo;

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

    iget-wide v2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

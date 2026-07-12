.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/appsearch/observer/ObserverSpec;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Landroid/app/appsearch/observer/ObserverCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/observer/ObserverSpec;

    iput-object p3, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$3:Landroid/app/appsearch/observer/ObserverCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/observer/ObserverSpec;

    iget-object v2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$3:Landroid/app/appsearch/observer/ObserverCallback;

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->$r8$lambda$mstb6dlOJg0h7MKcQGG8wlw7KmI(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;Landroid/app/appsearch/GlobalSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

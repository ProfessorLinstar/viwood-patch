.class public final synthetic Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

.field public final synthetic f$1:Landroid/app/appsearch/RemoveByDocumentIdRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/RemoveByDocumentIdRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$1:Landroid/app/appsearch/RemoveByDocumentIdRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$1:Landroid/app/appsearch/RemoveByDocumentIdRequest;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-static {v0, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->$r8$lambda$7cwcP4zTo1Nxbtot1zK1Wld2EAI(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

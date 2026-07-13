.class public final synthetic Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final acceptTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;->f$0:I

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->$r8$lambda$-_A7-jtJBtX07WeEVw72q-7mQ3A(ILcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z

    move-result p0

    return p0
.end method

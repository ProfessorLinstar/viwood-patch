.class public Lcom/android/server/rollback/LocalIntentReceiver;
.super Ljava/lang/Object;
.source "LocalIntentReceiver.java"


# instance fields
.field public final mConsumer:Ljava/util/function/Consumer;

.field public mLocalSender:Landroid/content/IIntentSender$Stub;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/LocalIntentReceiver$1;-><init>(Lcom/android/server/rollback/LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    .line 33
    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 1

    .line 45
    new-instance v0, Landroid/content/IntentSender;

    iget-object p0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

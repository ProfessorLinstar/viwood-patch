.class public final synthetic Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/OomAdjuster;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/OomAdjuster;

    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjuster;->$r8$lambda$uOb2fkEfiodlL-R7ljyXmiY1wCQ(Lcom/android/server/am/OomAdjuster;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->$r8$lambda$z58ZRLCLphSDg4DZBigPv7Pg9lg(Lcom/android/server/pm/UserManagerInternal;)[I

    move-result-object p0

    return-object p0
.end method

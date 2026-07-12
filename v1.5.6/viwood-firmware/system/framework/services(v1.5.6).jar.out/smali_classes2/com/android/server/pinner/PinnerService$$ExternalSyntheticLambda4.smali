.class public final synthetic Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/pinner/PinnedFile;

    invoke-static {p0, p1}, Lcom/android/server/pinner/PinnerService;->$r8$lambda$vknxfPtf9El4XwvHudFnd4mofSM(Ljava/lang/String;Lcom/android/server/pinner/PinnedFile;)Z

    move-result p0

    return p0
.end method

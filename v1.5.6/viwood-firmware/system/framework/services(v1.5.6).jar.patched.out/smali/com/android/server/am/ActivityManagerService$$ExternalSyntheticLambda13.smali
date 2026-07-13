.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:I

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:I

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$1:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$E-g0yzxkKlDnRUwccFdopwHCnoQ(IILcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

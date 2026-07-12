.class public final synthetic Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;

.field public final synthetic f$1:Landroid/app/time/ExternalTimeSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Landroid/app/time/ExternalTimeSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Landroid/app/time/ExternalTimeSuggestion;

    invoke-static {v0, p0}, Lcom/android/server/timedetector/TimeDetectorService;->$r8$lambda$y_J75_oYh67a3FAzEJUSJOgz1UQ(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V

    return-void
.end method

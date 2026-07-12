.class public final Lcom/android/server/inputmethod/ImeTrackerService$History;
.super Ljava/lang/Object;
.source "ImeTrackerService.java"


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mEntries:Ljava/util/ArrayDeque;

.field public final mLiveEntries:Ljava/util/WeakHashMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLiveEntries(Lcom/android/server/inputmethod/ImeTrackerService$History;)Ljava/util/WeakHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->addEntry(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/inputmethod/ImeTrackerService$History;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->getEntry(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService$History;->setFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsSequenceNumber()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/ImeTrackerService$History;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/inputmethod/ImeTrackerService$History;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    .line 205
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ImeTrackerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/inputmethod/ImeTrackerService$History;-><init>()V

    return-void
.end method


# virtual methods
.method public final addEntry(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 280
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 281
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 283
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLiveEntries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "  "

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, p1, v4, v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->dumpEntry(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEntries: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->dumpEntry(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final dumpEntry(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V
    .locals 3

    .line 300
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmSequenceNumber(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmType(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v1

    invoke-static {v1}, Landroid/view/inputmethod/ImeTracker$Debug;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmStatus(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v2

    invoke-static {v2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmTag(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms):"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTime="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmStartTime(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmOrigin(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result p4

    invoke-static {p4}, Landroid/view/inputmethod/ImeTracker$Debug;->originToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  reason="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmReason(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result p4

    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result p4

    invoke-static {p4}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  requestWindowName="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmRequestWindowName(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getEntry(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    return-object p0
.end method

.method public final setFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 11

    .line 236
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 237
    const-string v1, " with "

    const-string v2, "ImeTracker"

    const/4 v3, 0x5

    if-nez v0, :cond_1

    if-eq p2, v3, :cond_0

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": setFinished on previously finished token at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p3}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmStartTime(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;J)V

    .line 251
    invoke-static {v0, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmStatus(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;I)V

    if-eqz p3, :cond_2

    .line 254
    invoke-static {v0, p3}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;I)V

    :cond_2
    if-ne p2, v3, :cond_3

    .line 259
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": setFinished at "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result p1

    .line 260
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 p2, 0x64

    if-lt p1, p2, :cond_4

    .line 266
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_4
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 272
    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmUid(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v2

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmType(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v5

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmStatus(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v6

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmReason(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmOrigin(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v8

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)I

    move-result v9

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmFromUser(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z

    move-result v10

    const/16 v1, 0x245

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIIIIIZ)V

    return-void
.end method

.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;

    invoke-direct {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;Lcom/watabou/noosa/Image;)V

    return-void
.end method


# virtual methods
.method public select(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->select(Z)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->notesTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;

    .line 4
    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 5
    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->last_index:I

    :cond_0
    return-void
.end method

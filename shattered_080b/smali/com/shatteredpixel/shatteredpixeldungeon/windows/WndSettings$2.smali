.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;

    invoke-direct {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public select(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->select(Z)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;->ui:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;

    .line 4
    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;->last_index:I

    :cond_0
    return-void
.end method

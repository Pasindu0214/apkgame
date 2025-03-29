.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;
.source "WndHero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    invoke-direct {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public select(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->select(Z)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    .line 3
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    iput-boolean v0, p1, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean v0, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method

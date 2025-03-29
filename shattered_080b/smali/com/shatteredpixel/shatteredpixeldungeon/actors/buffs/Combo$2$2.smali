.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$2;
.super Ljava/lang/Object;
.source "Combo.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

.field public final synthetic val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$2;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$2;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->access$200(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-void
.end method
